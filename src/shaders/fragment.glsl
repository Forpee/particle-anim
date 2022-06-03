uniform float uTime;

varying float vProgress;

varying vec2 vUv;

void main()
{
    float dist=length(gl_PointCoord-vec2(.5));
    float alpha=1.-smoothstep(.45,.5,dist);
    gl_FragColor=vec4(1.,1.,1.,alpha*.5+.5*vProgress);
}