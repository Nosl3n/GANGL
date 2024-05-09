function result = gaussianFunction(x, y, xc, yc, sx, sy)
    result = exp(-((x - xc).^2 / (2 * sx^2) + (y - yc).^2 / (2 * sy^2)));
end
