classdef FitzPatrickSkinTone < SkinTone

    methods
        function obj = FitzPatrickSkinTone


            %
            % Fitzpatrick from Charlton PLOS One 2020
            %
            rgb_fitzpatrick = zeros(6,3);
            rgb_fitzpatrick(1,:) = [255 247 235];
            rgb_fitzpatrick(2,:) = [244 227 197];
            rgb_fitzpatrick(3,:) = [228 194 121];
            rgb_fitzpatrick(4,:) = [154 106 75];
            rgb_fitzpatrick(5,:) = [97 52 33];
            rgb_fitzpatrick(6,:) = [67 50 56];

            %
            % Fitzpatrick from https://www.ncbi.nlm.nih.gov/books/NBK481857/table/chapter6.t1/
            %
            if 0
            rgb_fitzpatrick = zeros(6,3);
            rgb_fitzpatrick(1,:) = [241 220 219];
            rgb_fitzpatrick(2,:) = [229 185 200];
            rgb_fitzpatrick(3,:) = [220 175 133];
            rgb_fitzpatrick(4,:) = [162 127 97];
            rgb_fitzpatrick(5,:) = [81 58 40];
            rgb_fitzpatrick(6,:) = [10 9 7];
            end

            lab_fitzpatrick = rgb2lab(rgb_fitzpatrick/255);

            ita_fitzpatrick = obj.lab2ita(lab_fitzpatrick);
            
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