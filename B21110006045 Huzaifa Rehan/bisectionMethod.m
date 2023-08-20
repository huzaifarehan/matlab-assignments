format long;

a = input("Enter the lower bound (a): ");
b = input("Enter the upper bound (b): ");
tolerance = input("Enter the tolerance value: ");
maxIterations = input("Enter the maximum number of iterations: ");

f = @(x) (x * sin(x) - 1);

if f(a) * f(b) > 0
    disp("Error: The function does not satisfy the bisection method requirements.");
    return;
end

for i = 1:maxIterations
    c = (a + b) / 2;
    funcC = f(c);
    
    if abs(b - a) < tolerance
        disp("Bisection method converged.");
        disp("Approximate root: " + c);
        disp("Number of iterations: " + i);
        return;
    end
    
    if f(a) * funcC < 0
        b = c;
    else
        a = c;
    end
end

disp("Bisection method did not converge within the specified number of iterations.");

