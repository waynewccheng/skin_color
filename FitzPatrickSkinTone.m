classdef FitzPatrickSkinTone < SkinTone

    methods
        function obj = FitzPatrickSkinTone

            %
            % Fitzpatrick
            %
            rgb_fitzpatrick = zeros(6,3);
            rgb_fitzpatrick(1,:) = [241 220 219];
            rgb_fitzpatrick(2,:) = [229 185 200];
            rgb_fitzpatrick(3,:) = [220 175 133];
            rgb_fitzpatrick(4,:) = [162 127 97];
            rgb_fitzpatrick(5,:) = [81 58 40];
            rgb_fitzpatrick(6,:) = [10 9 7];

            lab_fitzpatrick = rgb2lab(rgb_fitzpatrick/255);

            ita_fitzpatrick = rad2deg(atan((lab_fitzpatrick(:,1) - 50) ./ lab_fitzpatrick(:,3)));
            marker_fitzpatrick = {"I", "II", "III", "IV", "V", "VI"};

            obj.n = 6;
            obj.rgb = rgb_fitzpatrick;
            obj.lab = lab_fitzpatrick;
            obj.ita = ita_fitzpatrick;
            obj.marker = marker_fitzpatrick;

            return

        end

    end
end