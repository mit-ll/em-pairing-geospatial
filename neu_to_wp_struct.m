function wp = neu_to_wp_struct(ac1,ac2)
    % Modify time so it starts from 0
    ac1(:,1) = ac1(:,1) - ac1(1,1);
    ac2(:,1) = ac2(:,1) - ac2(1,1);
    
    % Fill in wp struct for ac1
    for idx = 1:size(ac1,1)
        if idx == 1
            wp(1,1).initial = [ac1(idx,2);...
                                ac1(idx,3);...
                                ac1(idx,4);...
                                ];
        else
            wp(1,1).update(:,idx-1) = [ac1(idx,1);...
                                        ac1(idx,2);...
                                        ac1(idx,3);...
                                        ac1(idx,4);...
                                        ];
        end
    end
    % Fill in wp struct for ac2
    for idx = 1:size(ac2,1)
        if idx == 1
            wp(2,1).initial = [ac2(idx,2);...
                                ac2(idx,3);...
                                ac2(idx,4);...
                                ];
        else
            wp(2,1).update(:,idx-1) = [ac2(idx,1);...
                                        ac2(idx,2);...
                                        ac2(idx,3);...
                                        ac2(idx,4);...
                                        ];
        end
    end
end