Vim�UnDo� N)�O+�-������Me[������"��   Q   #function tauDepth(Parameters, FltX)   ;         M       M   M   M    [xn�    _�                     	       ����                                                                                                                                                                                                                                                                                                                                                             [c�$     �      
   F      "function fricDepth(cca, ccb, FltX)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             [c�5     �   
      F          # Friction with depth5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             [c�8     �         H       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             [c�O     �         H          cca = repmat([0.015])5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             [c�T     �         H      %    cca = repmat([0.015], FaultNglob)5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             [c�[     �         H      5    cca::Array{Float64} = repmat([0.015], FaultNglob)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             [c�a     �         I          cca::Array{Float64}5�_�      	                 (    ����                                                                                                                                                                                                                                                                                                                                                             [c�n    �         I      )    cca::Array{Float64} = repmat([0.020])5�_�      
           	   	       ����                                                                                                                                                                                                                                                                                                                            c              3       v   3    [c��     �      
   I      function fricDepth(FltX)5�_�   	              
      *    ����                                                                                                                                                                                                                                                                                                                            c              3       v   3    [c��     �         I      5    cca::Array{Float64} = repmat([0.015], FaultNglob)5�_�   
                    *    ����                                                                                                                                                                                                                                                                                                                            c              3       v   3    [c��     �         I      5    cca::Array{Float64} = repmat([0.020], FaultNglob)5�_�                    *       ����                                                                                                                                                                                                                                                                                                                            c              3       v   3    [c��     �   )   +   I      function SeffDepth(FltX)5�_�                    5       ����                                                                                                                                                                                                                                                                                                                            c              3       v   3    [c��     �   4   6   I      function tauDepth(FltX)5�_�                    *   -    ����                                                                                                                                                                                                                                                                                                                            c              3       v   3    [c��     �   )   -   I      -function SeffDepth(s::space_parameters, FltX)5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                            e              3       v   3    [c��     �   +   -   K          Seff::Array{Float64}5�_�                    ,   (    ����                                                                                                                                                                                                                                                                                                                            e              3       v   3    [c��    �   +   -   K      )    Seff::Array{Float64} = repmat([50e6])5�_�                    8        ����                                                                                                                                                                                                                                                                                                                            e              3       v   3    [c�     �   8   :   L          �   8   :   K    5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            f              3       v   3    [c�!     �   8   :   L          tauo::Array{Float64}5�_�                    9   *    ����                                                                                                                                                                                                                                                                                                                            f              3       v   3    [c�m     �   8   :   L      +    tauo::Array{Float64} = repmat([22.5e6])5�_�                    9   ,    ����                                                                                                                                                                                                                                                                                                                            f              3       v   3    [c�s    �   8   :   L      7    tauo::Array{Float64} = repmat([22.5e6], FaultNglob)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       [c��     �         L      7    cca::Array{Float64} = repmat([0.015], s.FaultNglob)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       [c��    �         L      7    cca::Array{Float64} = repmat([0.020], s.FaultNglob)5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                v       [c��     �         L      7    cca::Array{Float64} = repmat([0.015], s.FaultNglob)5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                v       [c��     �         L      7    ccb::Array{Float64} = repmat([0.020], s.FaultNglob)5�_�                    ,   /    ����                                                                                                                                                                                                                                                                                                                                                v       [c��     �   +   -   L      7    Seff::Array{Float64} = repmat([50e6], s.FaultNglob)5�_�                    9   1    ����                                                                                                                                                                                                                                                                                                                                                v       [c��    �   8   :   L      9    tauo::Array{Float64} = repmat([22.5e6], s.FaultNglob)5�_�                    L        ����                                                                                                                                                                                                                                                                                                                                                v       [dsZ     �   L               �   L            5�_�                    M       ����                                                                                                                                                                                                                                                                                                                                                v       [dsq     �   L              function IC()5�_�                    M        ����                                                                                                                                                                                                                                                                                                                            ~   
       M           v        [dt	     �   L               5�_�                    M       ����                                                                                                                                                                                                                                                                                                                            ~   
       M          v       [dt     �   L              @with_kw immutable IC5�_�                     O       ����                                                                                                                                                                                                                                                                                                                            ~   
       O          v       [dt0    �   N                  cca, ccb = fricDepth(FltX)5�_�      !               O        ����                                                                                                                                                                                                                                                                                                                            ~   
       O          v       [dt7    �   O                  �   O            5�_�       "           !   M       ����                                                                                                                                                                                                                                                                                                                            P          M          V       [dt�    �   L   M          @with_kw immutable IC       !    cca, ccb = fricDepth(s, FltX)   end5�_�   !   #           "   L        ����                                                                                                                                                                                                                                                                                                                                      L           V        [dx�     �   L               �   L            5�_�   "   $           #   O   
    ����                                                                                                                                                                                                                                                                                                                                      L           V        [dy0   	 �   J              end    �   K                   �   L                   �   M              @with_kw immutable IC    �   N              
    cca = 5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             [pj�     �         K      5    cca::Array{Float64} = repmat([0.015], s.FltNglob)5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             [pj�     �         K      5    ccb::Array{Float64} = repmat([0.020], s.FltNglob)5�_�   %   '           &   ,       ����                                                                                                                                                                                                                                                                                                                                                             [pj�     �   +   -   K      5    Seff::Array{Float64} = repmat([50e6], s.FltNglob)5�_�   &   (           '   9       ����                                                                                                                                                                                                                                                                                                                                                             [pj�   
 �   8   :   K      7    tauo::Array{Float64} = repmat([22.5e6], s.FltNglob)5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             [p�^    �         K      2    fric_depth1 = find(abs.(FltX) .<= abs(fP2[2]))5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             [p�q     �         K      A    fric_depth2 = find(abs(fP2[2]) .< abs.(FltX) .<= abs(fP3[2]))5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                             [p�s     �         K      A    fric_depth3 = find(abs(fP3[2]) .< abs.(FltX) .<= abs(fP4[2]))5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                             [p�u     �         K      A    fric_depth4 = find(abs(fP4[2]) .< abs.(FltX) .<= abs(fP5[2]))5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             [p�w     �         K      1    fric_depth5 = find(abs.(FltX) .> abs(fP5[2]))5�_�   ,   .           -   /       ����                                                                                                                                                                                                                                                                                                                                                             [p�{     �   .   0   K      1    Seff_depth = find(abs.(FltX) .<= abs(sP2[2]))5�_�   -   /           .   @       ����                                                                                                                                                                                                                                                                                                                                                             [p�~     �   ?   A   K      1    tau_depth1 = find(abs.(FltX) .<= abs(tP2[2]))5�_�   .   0           /   A       ����                                                                                                                                                                                                                                                                                                                                                             [p��     �   @   B   K      @    tau_depth2 = find(abs(tP2[2]) .< abs.(FltX) .<= abs(tP3[2]))5�_�   /   1           0   B       ����                                                                                                                                                                                                                                                                                                                                                             [p��     �   A   C   K      @    tau_depth3 = find(abs(tP3[2]) .< abs.(FltX) .<= abs(tP4[2]))5�_�   0   2           1   C       ����                                                                                                                                                                                                                                                                                                                                                             [p��    �   B   D   K      @    tau_depth4 = find(abs(tP4[2]) .< abs.(FltX) .<= abs(tP5[2]))5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                             [p��     �      !   K          a_b[fric_depth5] = 0.00475�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                             [p��     �         K      9    a_b[fric_depth1] = Int1D(fP1, fP2, FltX[fric_depth1])5�_�   3   5           4          ����                                                                                                                                                                                                                                                                                                                                                             [p��     �         K      9    a_b[fric_depth2] = Int1D(fP2, fP3, FltX[fric_depth2])5�_�   4   6           5          ����                                                                                                                                                                                                                                                                                                                                                             [p��     �         K      9    a_b[fric_depth3] = Int1D(fP3, fP4, FltX[fric_depth3])5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                             [p��    �          K      9    a_b[fric_depth4] = Int1D(fP4, fP5, FltX[fric_depth4])5�_�   6   8           7   	       ����                                                                                                                                                                                                                                                                                                                                                             [xn/     �      
   K      -function fricDepth(s::space_parameters, FltX)5�_�   7   9           8      +    ����                                                                                                                                                                                                                                                                                                                                                             [xn4     �         K      5    cca::Array{Float64} = repeat([0.015], s.FltNglob)5�_�   8   :           9      +    ����                                                                                                                                                                                                                                                                                                                                                             [xn5     �         K      5    ccb::Array{Float64} = repeat([0.020], s.FltNglob)5�_�   9   ;           :   *       ����                                                                                                                                                                                                                                                                                                                                                             [xnF     �   )   +   K      -function SeffDepth(s::space_parameters, FltX)5�_�   :   <           ;   *       ����                                                                                                                                                                                                                                                                                                                                                             [xnH     �   )   +   K      (function SeffDepth(s::sparameters, FltX)5�_�   ;   =           <   ,   +    ����                                                                                                                                                                                                                                                                                                                                                             [xnK     �   +   -   K      5    Seff::Array{Float64} = repeat([50e6], s.FltNglob)5�_�   <   >           =   7       ����                                                                                                                                                                                                                                                                                                                                                             [xnR     �   6   8   K      ,function tauDepth(s::space_parameters, FltX)5�_�   =   ?           >   9   .    ����                                                                                                                                                                                                                                                                                                                                                             [xn�     �   8   :   K      7    tauo::Array{Float64} = repeat([22.5e6], s.FltNglob)5�_�   >   @           ?   7   #    ����                                                                                                                                                                                                                                                                                                                                                             [xn�    �   6   :   K      #function tauDepth(Parameters, FltX)5�_�   ?   A           @   +        ����                                                                                                                                                                                                                                                                                                                            9          9          V       [xn�     �   +   -   M    �   +   ,   M    5�_�   @   B           A   -   ,    ����                                                                                                                                                                                                                                                                                                                            :          :          V       [xn�     �   ,   .   N      5    Seff::Array{Float64} = repeat([50e6], P.FltNglob)5�_�   A   C           B   ,       ����                                                                                                                                                                                                                                                                                                                            :          :          V       [xn�     �   +   .   N          FltNglob = length(FltX)5�_�   B   D           C   *       ����                                                                                                                                                                                                                                                                                                                            ;          ;          V       [xn�     �   )   +   O      (function SeffDepth(P::sparameters, FltX)5�_�   C   E           D   
       ����                                                                                                                                                                                                                                                                                                                            ;          ;          V       [xn�     �   
      O    �   
      O    5�_�   D   F           E          ����                                                                                                                                                                                                                                                                                                                            <          <          V       [xn�     �         P          # Friction with depth5�_�   E   G           F      ,    ����                                                                                                                                                                                                                                                                                                                            =          =          V       [xn�     �         Q      5    cca::Array{Float64} = repeat([0.015], P.FltNglob)5�_�   F   H           G      ,    ����                                                                                                                                                                                                                                                                                                                            =          =          V       [xn�    �         Q      5    ccb::Array{Float64} = repeat([0.020], P.FltNglob)5�_�   G   I           H   	        ����                                                                                                                                                                                                                                                                                                                            9                     V   )    [xn�     �      
   Q      'function fricDepth(P::parameters, FltX)5�_�   H   J           I   	       ����                                                                                                                                                                                                                                                                                                                            9                     V   )    [xn�     �      
   Q      function fricDepth(, FltX)5�_�   I   K           J   	       ����                                                                                                                                                                                                                                                                                                                            9                     V   )    [xn�     �      
   Q      function fricDepth( FltX)5�_�   J   L           K   ,   !    ����                                                                                                                                                                                                                                                                                                                            9                     V   )    [xn�     �   +   -   Q      'function SeffDepth(P::parameters, FltX)5�_�   K   M           L   ,       ����                                                                                                                                                                                                                                                                                                                            9                     V   )    [xn�     �   +   -   Q      function SeffDepth( FltX)5�_�   L               M   ;       ����                                                                                                                                                                                                                                                                                                                            9                     V   )    [xn�    �   :   <   Q      #function tauDepth(Parameters, FltX)5��