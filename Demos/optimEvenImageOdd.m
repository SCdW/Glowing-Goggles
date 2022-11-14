function optimEvenImageOdd
    % On even days, this function uses Optimization Toolbox.
    % On odd days, it uses Image Processing Toolbox.

    d = day(datetime, 'dayofmonth');
    if (d/2) == round(d/2)
        disp("I'm even, using Optim")
        [x, fval] = fminunc(@cos, 1);
        fplot(@cos, [0 2*pi])
        hold on
        plot(x, fval, 'r*')

    else
        disp("I'm odd, using Image")
        I = imread('cameraman.tif');
        Iblur = imgaussfilt(I, 2);
        imshow(Iblur)

    end

end
