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

        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end