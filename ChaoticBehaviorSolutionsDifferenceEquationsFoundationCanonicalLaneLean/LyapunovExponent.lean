import ChaoticBehaviorSolutionsDifferenceEquationsFoundation.DifferenceEquationSystem

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure LyapunovExponentPackage {A : AdmissibleClass}
    (sys : DifferenceEquationSystemPackage A) where
  lyapunovExponent : ℝ
  derivativeSystem : sys.system.stateSpace → ℝ
  finiteExponent : Prop
  positiveExponentIndicatesChaos : Prop
  finiteExponentClosed : finiteExponent
  positiveExponentIndicatesChaosClosed : positiveExponentIndicatesChaos

def LyapunovExponentClosed {A : AdmissibleClass}
    {sys : DifferenceEquationSystemPackage A} (L : LyapunovExponentPackage sys) : Prop :=
  L.finiteExponent ∧ L.positiveExponentIndicatesChaos

theorem lyapunov_exponent_closed_from_evidence
    {A : AdmissibleClass} {sys : DifferenceEquationSystemPackage A}
    (L : LyapunovExponentPackage sys) : LyapunovExponentClosed L := by
  exact And.intro L.finiteExponentClosed L.positiveExponentIndicatesChaosClosed

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse