Vim�UnDo� �-Ƈ��`��i"��ۤ&��l�[t������   �       while t < tim.Total_time                             [h�!    _�                             ����                                                                                                                                                                                                                                                                                                                                                             [h×    �                   �               5�_�                           ����                                                                                                                                                                                                                                                                                                                            !                    V       [h�     �          �          while t < tim.Total_time�         �          while t < tim.Total_time5�_�                             ����                                                                                                                                                                                                                                                                                                                                      �          V       [h�     �               �       while t < tim.Total_time           it = it + 1           t = t + dt               time_[it] = t                    if isolver == 1                   vPre .= v[:]               dPre .= d[:]       %            Vf0 .= 2*v[iFlt] + eq.Vpl               Vf  .= Vf0[:]                   for p1 = 1:2                      *                # Compute the forcing term                   F[:] .= 0   3                F[iFlt] .= dPre[iFlt] .+ v[iFlt]*dt       E                # Assign previous displacement field as initial guess                    dnew .= d[FltNI]       (                # Solve d = K^-1F by PCG   =                dnew = PCG(s, diagKnew, dnew, F, iFlt, FltNI,   5                              H, Ht, iglob, nglob, W)                      3                # update displacement on the medium                    d[FltNI] .= dnew       )                # make d = F on the fault   "                d[iFlt] .= F[iFlt]       )                # Compute on-fault stress                   a[:] .= 0       A                a = element_computation(s, iglob, d, H, Ht, W, a)       "                a[FltIglobBC] .= 0   &                tau1 .= -a[iFlt]./FltB                      N                psi1, Vf1 = slrFunc(eq, NFBC, s.FltNglob, psi, psi1, Vf, Vf1,    L                                    IDstate, tau1, tauo, Seff, cca, ccb, dt)       #                Vf1[iFBC] .= eq.Vpl   #                Vf .= (Vf0 + Vf1)/2   ,                v[iFlt] .= 0.5*(Vf - eq.Vpl)                   end                   psi .= psi1[:]               tau .= tau1[:]               tau[iFBC] .= 0               Vf1[iFBC] .= eq.Vpl       )            v[iFlt] .= 0.5*(Vf1 - eq.Vpl)   3            v[FltNI] .= (d[FltNI] - dPre[FltNI])/dt                   #RHS = a[:]   .            #RHS[iFlt] = RHS[iFlt] - FltB.*tau   D            #RMS = sqrt(sum(RHS.^2)/length(RHS))./maximum(abs.(RHS))                  %            # Line 731: P_MA: Omitted               a[:] .= 0               d[FltIglobBC] .= 0               v[FltIglobBC] .= 0                      >            # If isolver != 1, or max slip rate is < 10^-2 m/s           else                              dPre .= d[:]               vPre .= v[:]                   # Update   .            d .= d .+ dt.*v .+ (half_dt_sq).*a                   # Prediction                v .= v .+ half_dt.*a               a[:] .= 0       B            # Internal forces -K*d[t+1] stored in global array 'a'   T            # This is different from matlab code; will change if Nel_ETA is not zero   =            a = element_computation(s, iglob, d, H, Ht, W, a)               a[FltIglobBC] .= 0       "            # Absorbing boundaries   /            a[iBcL] .= a[iBcL] .- BcLC.*v[iBcL]   /            a[iBcT] .= a[iBcT] .- BcTC.*v[iBcT]       I            ###### Fault Boundary Condition: Rate and State #############   ?            FltVfree .= 2*v[iFlt] .+ 2*half_dt*a[iFlt]./M[iFlt]   (            Vf .= 2*vPre[iFlt] .+ eq.Vpl           '            #for jF = 1:FaultNglob-NFBC   '            for j = NFBC: s.FltNglob-1        "                #j = jF - 1 + NFBC   T                psi1[j] = IDS(eq.xLf[j], eq.Vo[j], psi[j], dt, Vf[j], 1e-5, IDstate)       V                Vf1[j], tau1[j] = NRsearch(eq.fo[j], eq.Vo[j], cca[j], ccb[j],Seff[j],   [                                          tauNR[j], tauo[j], psi1[j], FltZ[j], FltVfree[j])                  K                if Vf[j] > 1e10 || isnan(Vf[j]) == 1 || isnan(tau1[j]) == 1   %                    println(FltVfree)   *                    println("iter = ", it)   .                    error("NR SEARCH FAILED!")                       return                   end                      `                psi2[j] = IDS2(eq.xLf[j], eq.Vo[j], psi[j], psi1[j], dt, Vf[j], Vf1[j], IDstate)                      #                # NRsearch 2nd loop   V                Vf2[j], tau2[j] = NRsearch(eq.fo[j], eq.Vo[j], cca[j], ccb[j],Seff[j],   Z                                          tau1[j], tauo[j], psi2[j], FltZ[j], FltVfree[j])                   end                  %            tau .= tau2[:] .- tauo[:]               tau[iFBC] .= 0               psi .= psi2[:]               #KD = a[:]   *            a[iFlt] .= a[iFlt] - FltB.*tau   F            ########## End of fault boundary condition ##############                        #RHS = a[:]                   # Solve for a_new               a[:] .= a./M                              # Correction               v .= v .+ half_dt*a                   v[FltIglobBC] .= 0               a[FltIglobBC] .= 0       (            #### Line 861: Omitting P_Ma                              #LHS = M.*a   N            #RMS = sqrt.(sum.((RHS - LHS).^2)/length(RHS))./maximum(abs.(RHS))                end # of isolver if loop              +        Vfmax = 2*maximum(v[iFlt]) + eq.Vpl                   #----   A        # Output variables at different depths for every timestep   B        # Omitted the part of code from line 871 - 890, because I    =        # want to output only certain variables each timestep           #----       G        # Output stress, slip, sliprate on fault every certain interval           if t > tvsx               ntvsx = ntvsx + 1                  3            delf5yr[:,ntvsx] = 2*d[iFlt] + eq.Vpl*t   /            Vf5yr[:,ntvsx] = 2*v[iFlt] + eq.Vpl   /            Tau5yr[:,ntvsx] = (tau + tauo)./1e6                               tvsx = tvsx +tvsxinc           end                      if Vfmax > eq.Vevne                if idelevne == 0   !                nevne = nevne + 1                   idelevne = 1                   tevneb = t   $                tevne = tim.tevneinc       7                delfsec[:,nevne] = 2*d[iFlt] + eq.Vpl*t   3                Vfsec[:,nevne] = 2*v[iFlt] + eq.Vpl   3                Tausec[:,nevne] = (tau + tauo)./1e6               end       4            if idelevne == 1 && (t - tevneb) > tevne   !                nevne = nevne + 1                      7                delfsec[:,nevne] = 2*d[iFlt] + eq.Vpl*t   3                Vfsec[:,nevne] = 2*v[iFlt] + eq.Vpl   3                Tausec[:,nevne] = (tau + tauo)./1e6       ,                tevne = tevne + tim.tevneinc               end               else               idelevne = 0           end               #-----   8        # Output stress and slip before and after events            # Omitting lines 920-934           #-----       (        # Output timestep info on screen           if mod(it,500) == 0   4            @printf("\nTime (yr) = %1.5g", t/yr2sec)           end              M        # Determine quasi-static or dynamic regime based on max-slip velocity   G        if isolver == 1 && Vfmax < 5e-3 || isolver == 2 && Vfmax < 2e-3               isolver = 1           else               isolver = 2           end           *        # Some variables for each timestep   (        Stress[:,it] = (tau + tauo)./1e6   *        SlipVel[:,it] = 2*v[iFlt] + eq.Vpl   )        Slip[:,it] = 2*d[iFlt] + eq.Vpl*t              "        # Compute next timestep dt   T        dt = dtevol(tim, dt , dtmin, XiLf, s.FltNglob, NFBC, SlipVel[:,it], isolver)           end # end of time loop          ,    # Remove zeros from preallocated vectors       time_ = time_[1:it]       !    delfsec = delfsec[:, 1:nevne]       Vfsec = Vfsec[:,1:nevne]       Tausec = Tausec[:,1:nevne]            delf5yr = delf5yr[:,1:ntvsx]       Vf5yr = Vf5yr[:,1:ntvsx]       Tau5yr = Tau5yr[:,1:ntvsx]           Stress = Stress[:,1:it]       SlipVel = SlipVel[:,1:it]       Slip = Slip[:,1:it]5��