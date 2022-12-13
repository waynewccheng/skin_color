        function create_animation (filename)
            
            % fix the camera view
            axis vis3d
            
            for n = 1:360/5
                
                camorbit(5,0,'data',[0 0 1])
                
                % Capture the plot as an image
                frame = getframe(gcf);
                im = frame2im(frame);
                [imind,cmcm] = rgb2ind(im,256);
                
                % Write to the GIF File
                if n == 1
                    imwrite(imind,cmcm,filename,'gif', 'DelayTime',0.1, 'Loopcount',inf);
                else
                    imwrite(imind,cmcm,filename,'gif', 'DelayTime',0.1, 'WriteMode','append');
                end
            end
            
            return
        end