function stepSomething
% This function steps something, but we don't know what because it's
% generalized with feval.

    obj = feval('comm.CPFSKModulator', 8, 'BitInput', true);
    m = step(obj, randi([0 1],100*log2(8),1));
    plot(real(m),imag(m))

end