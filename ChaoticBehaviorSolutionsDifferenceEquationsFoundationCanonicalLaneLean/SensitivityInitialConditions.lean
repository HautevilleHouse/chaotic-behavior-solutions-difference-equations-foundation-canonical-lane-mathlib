import ChaoticBehaviorSolutionsDifferenceEquationsFoundation.BifurcationAnalysis

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure SensitivityPackage {A : AdmissibleClass}
    {sys : DifferenceEquationSystemPackage A}
    {L : LyapunovExponentPackage sys}
    (B : BifurcationPackage L) where
  epsilonDeltaCondition : Prop
  divergenceOfNearbyOrbits : Prop
  sensitiveDependence : Prop
  epsilonDeltaConditionClosed : epsilonDeltaCondition
  divergenceOfNearbyOrbitsClosed : divergenceOfNearbyOrbits
  sensitiveDependenceClosed : sensitiveDependence

def SensitivityClosed {A : AdmissibleClass}
    {sys : DifferenceEquationSystemPackage A}
    {L : LyapunovExponentPackage sys}
    {B : BifurcationPackage L} (S : SensitivityPackage B) : Prop :=
  S.epsilonDeltaCondition ∧ S.divergenceOfNearbyOrbits ∧ S.sensitiveDependence

theorem sensitivity_closed_from_evidence
    {A : AdmissibleClass} {sys : DifferenceEquationSystemPackage A}
    {L : LyapunovExponentPackage sys} {B : BifurcationPackage L}
    (S : SensitivityPackage B) : SensitivityClosed S := by
  exact And.intro S.epsilonDeltaConditionClosed
    (And.intro S.divergenceOfNearbyOrbitsClosed S.sensitiveDependenceClosed)

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse