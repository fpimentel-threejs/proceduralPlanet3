varying float vNormal;

void main() {
    // Calculate the distance from the fragment to the origin
    float distanceToOrigin = length(gl_FragCoord.xyz);

    // Define a maximum distance for color change
    float maxDistance = 5.0;

    // Calculate a normalized distance value between 0.0 and 1.0
    float normalizedDistance = vNormal / maxDistance;

    // Define two colors for interpolation (start and end colors)
        vec3 color = vec3(1.0 - normalizedDistance, normalizedDistance, 0.0);

    // Use mix to interpolate between the two colors based on the normalized distance

    // Output the final color
    gl_FragColor = vec4(color, 1.0);
}