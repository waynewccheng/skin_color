classdef MonkSkinTone < SkinTone

    methods
        function obj = MonkSkinTone

            %
            % Monk RGB data retrived from https://skintone.google/get-started
            %
            rgb_monk = zeros(10,3);
            rgb_monk(1,:) = rgb(246, 237, 228);
            rgb_monk(2,:) = rgb(243, 231, 219);
            rgb_monk(3,:) = rgb(247, 234, 208);
            rgb_monk(4,:) = rgb(234, 218, 186);
            rgb_monk(5,:) = rgb(215, 189, 150);
            rgb_monk(6,:) = rgb(160, 126, 86);
            rgb_monk(7,:) = rgb(130, 92, 67);
            rgb_monk(8,:) = rgb(96, 65, 52);
            rgb_monk(9,:) = rgb(58, 49, 42);
            rgb_monk(10,:) = rgb(41, 36, 32);

            lab_monk = rgb2lab(rgb_monk/255);

            ita_monk = obj.lab2ita(lab_monk);

            marker = {};
            for i = 1:10
                marker{i} = sprintf('%d',i);
            end

            obj.n = 10;
            obj.rgb = rgb_monk;
            obj.lab = lab_monk;
            obj.ita = ita_monk;
            obj.marker = marker;

            return

            function val = rgb (r,g,b)
                val = [r g b];
            end

        end

    end
end