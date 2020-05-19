//
// Aurora shader
//
varying vec3 internal_position;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time;

uniform vec2 resolution;
uniform float pixel_width;
uniform float pixel_height;

float random(vec2 p)
{
    vec3 p3  = fract(vec3(p.xyx) * .1031);
    p3 += dot(p3, p3.yzx + 33.33);
    return fract((p3.x + p3.y) * p3.z);
}

mat2 mm2(in float a){float c = cos(a), s = sin(a);return mat2(c,s,-s,c);}
float tri(in float x){return clamp(abs(fract(x)-.5),0.01,0.49);}
vec2 tri2(in vec2 p){return vec2(tri(p.x)+tri(p.y),tri(p.y+tri(p.x)));}

float fbmAurora(vec2 p, float spd) {
    float z = 1.8;
    float z2 = 2.5;
	float rz = 0.;
    p *= mm2(p.x * 0.06);
    vec2 bp = p;
	for (float i = 0.; i < 5.; i++ ) {
        vec2 dg = tri2(bp*1.85)*.75;
        dg *= mm2(time*spd);
        p -= dg/z2;

        bp *= 1.3;
        z2 *= .45;
        z *= .42;
		p *= 1.21 + (rz-1.0)*.02;
        
        rz += tri(p.x+tri(p.y))*z;
        p*= sin(time * 0.05) * cos(time * 0.01);
	}
    return clamp(1. / pow(rz * 20., 1.3), 0.,1.);
}


vec4 aurora( vec3 rd ) {
    vec4 col = vec4(0.);
    vec4 avgCol = vec4(0.);    

    for (float i=0.; i < 50.; i++) {
		vec2 rand = vec2(1000., 500.);
        float of = 0.006 * random(rand/*gl_FragCoord.xy*/) * smoothstep(0.,15., i);
        float pt = ((.8+pow(i,1.4)*.002)) / (rd.y * 2. + 0.4);
        pt -= of;
    	vec3 bpos = 5.5 + pt * rd;
        vec2 p = bpos.zx;
        float rzt = fbmAurora(p, 0.06);
        vec4 col2 = vec4(0,0,0, rzt);
        col2.rgb = (sin(1.-vec3(2.15,-.5, 1.2) +i * 0.043) * 0.5 + 0.5)*rzt;
        avgCol = mix(avgCol, col2, .5);
        col += avgCol * exp2(-i*0.065 - 2.5) * smoothstep(0., 5., i);
    }
    col *= clamp(rd.y*15.+.4,0.,1.);
 
    return smoothstep(0.,1.1,pow(col,vec4(1.))*1.5);
}

void main()
{
	vec2 internal_position_ = vec2(v_vTexcoord.xy) * resolution.y * 10.;
	vec2 p = (resolution.xy - internal_position.xy) / resolution.y;
	vec3 rd = normalize(vec3(p.xy + vec2(1.,2.), 1.064));
	vec4 color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	// AURORA TIME
    vec4 vcolor = mix(vec4(0.006,0.026,0.095, 1.), vec4(0.007,0.011,0.035, 1.), internal_position.y / resolution.y);//v_vTexcoord.y);
	vcolor += aurora(rd);
	//vcolor = pow(vcolor, vec4(1. / 2.2)); // gamma correction
	vcolor = smoothstep(0., 1.,vcolor);
	vcolor.a = color.a * 1.;
	vcolor.rgb += 1. - color.r;
	
	vec2 offsetx;
	offsetx.x = pixel_width;
	vec2 offsety;
	offsety.y = pixel_height;
	float alpha = (1. - texture2D( gm_BaseTexture, v_vTexcoord + offsetx ).a);
	alpha += (1. - texture2D( gm_BaseTexture, v_vTexcoord - offsetx ).a);
	alpha += (1. - texture2D( gm_BaseTexture, v_vTexcoord + offsety ).a);
	alpha += (1. - texture2D( gm_BaseTexture, v_vTexcoord - offsety ).a);
	float max_add = .25;
	vcolor.rgb += clamp(alpha, 0., max_add);
	//vcolor.r = (resolution.y - internal_position.y) / resolution.y;
    gl_FragColor = vcolor;
}
