Vim�UnDo� }�P_���fAIz�����&m%�[_wM����                    =       =   =   =    [Q    
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             [P�q     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             [P�~     �                &######################################5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             [Pل    �                 ##########################5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       [P��     �                 function Varjac1D()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       [P��     �                 function Varjac1D(dxe, dye)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       [P�     �      	   	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       [P�    �      	   
          5�_�      	                     ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��     �                  �               5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��     �                 function coefint(dxe, dye)5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��    �                5�_�   
                        ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��     �                   coefint1 = 5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��     �                   return 5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��     �               
    jac = 5�_�                       
    ����                                                                                                                                                                                                                                                                                                                               
                 v       [P��     �               
    jac = 5�_�                           ����                                                                                                                                                                                                                                                                                                                                
                 v       [P��     �                   coefint1 = 5�_�                           ����                                                                                                                                                                                                                                                                                                                            !   
                 v       [P��     �                   coefint1 = 5�_�                           ����                                                                                                                                                                                                                                                                                                                            !   
                 v       [P��     �                   coefint1 = jac()5�_�                           ����                                                                                                                                                                                                                                                                                                                            !   
                 v       [P��     �                   coefint1 = jac/()5�_�                           ����                                                                                                                                                                                                                                                                                                                            !   
                 v       [P�     �                   coefint1 = jac/(0.5*dxe)5�_�                           ����                                                                                                                                                                                                                                                                                                                            "   
                 v       [P�     �                   coefint2 = jac/(0.5*dy2)5�_�                           ����                                                                                                                                                                                                                                                                                                                            "   
                 v       [P�     �                   coefint2 = jac/(0.5*dy2)^25�_�                           ����                                                                                                                                                                                                                                                                                                                            "   
                 v       [P�    �                   return 5�_�                            ����                                                                                                                                                                                                                                                                                                                            "   
                 v       [P�A     �               function Varjac1D(dxe, dye)5�_�                            ����                                                                                                                                                                                                                                                                                                                            "   
                 v       [P�C     �                   dx_dxi = 0.5.*dxe5�_�                            ����                                                                                                                                                                                                                                                                                                                            "   
                 v       [P�C     �      	             dy_deta = 0.5.*deta5�_�                    
        ����                                                                                                                                                                                                                                                                                                                            "   
                 v       [P�E     �   	            3    return dx_dxi, dy_deta, jac, coefint1, coefint25�_�                            ����                                                                                                                                                                                                                                                                                                                            "   
                 v       [P�E    �   
            end5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �                   for ex=1:NelX5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �                   for ex=1:length(dxe)5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �                   jac = 0.25*dxe*dye5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �                   coefint1 = jac/(0.5*dxe)^25�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �                   coefint2 = jac/(0.5*dye)^25�_�   #   %           $      &    ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �               &            coefint2 = jac/(0.5*dye)^25�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �                           jac = 0.25*dxe*dye5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                 v        [P��     �                  5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                 v        [Q ]     �                   coefint1 = zeros(dxe, dye)5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                 v        [Q _     �               &    coefint1 = zeros(length()dxe, dye)5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                 v        [Q b     �               %    coefint1 = zeros(length(dxe, dye)5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                 v        [Q e     �                      �                   coefint1 = zeros(dxe, dye)5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                 v        [Q k     �               function coefint(dxe, dye)5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                 v        [Q t     �               &            coefint1 = jac/(0.5*dxe)^25�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                 v        [Q y     �               &            coefint2 = jac/(0.5*dye)^25�_�   -   /           .      *    ����                                                                                                                                                                                                                                                                                                                                                 v        [Q |     �               -            coefint1[ex,ey] = jac/(0.5*dxe)^25�_�   .   0           /      *    ����                                                                                                                                                                                                                                                                                                                                                 v        [Q �     �               -            coefint2[ex,ey] = jac/(0.5*dye)^25�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                                 v        [Q �     �                           jac = 0.25*dxe*dye5�_�   0   2           1      "    ����                                                                                                                                                                                                                                                                                                                                                 v        [Q �    �               "            jac = 0.25*dxe[ex]*dye5�_�   1   3           2      
    ����                                                                                                                                                                                                                                                                                                                                                v       [Q~     �                   for ex=1:length(dxe)5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�     �                       for ey=1:length(dye)5�_�   3   5           4          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�     �                   for ey=1:length(dxe)5�_�   4   6           5          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�    �                       for ex=1:length(dye)5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�     �                   �             5�_�   6   8           7          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�     �               1            coefint1[ex,ey] = jac/(0.5*dxe[ex])^25�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�     �               1            coefint2[ex,ey] = jac/(0.5*dye[ey])^25�_�   8   :           9      -    ����                                                                                                                                                                                                                                                                                                                                                v       [Q�    �               -            coefint2[e] = jac/(0.5*dye[ey])^25�_�   9   ;           :          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�     �                           e = e+15�_�   :   <           ;          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�     �               -            coefint2[e] = jac/(0.5*dye[ey])^2    �                    �                           e = e15�_�   ;   =           <          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�     �                           5�_�   <               =          ����                                                                                                                                                                                                                                                                                                                                                v       [Q�   
 �                           e = e+15��