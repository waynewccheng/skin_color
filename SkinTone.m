classdef SkinTone < handle

    properties
        n % how many patches
        rgb
        lab
        ita
        marker
    end

    methods

        function obj = SkinTone
        end

        function outputArg = lab2ita(obj,lab)
%            outputArg = rad2deg(atan((lab(:,1) - 50) ./ lab(:,3)));
            outputArg = rad2deg(atan2((lab(:,1) - 50) , lab(:,3)));
        end
    end
end