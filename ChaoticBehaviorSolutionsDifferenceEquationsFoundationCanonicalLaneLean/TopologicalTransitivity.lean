import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsFoundation.DifferenceEquationFoundations

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure TopologicalTransitivityPackage (D : DifferenceEquationFoundation) where
  openSets : Set (Set D.stateSpace)
  transitiveCondition : ∀ (U V : Set D.stateSpace), U ∈ openSets ∧ V ∈ openSets → ∃ (n : ℕ), (D.mapFamily 0)^[n] '' U ∩ V ≠ ∅
  topologicalTransitivityEvidence : transitiveCondition

def topologicalTransitivityClosed {D : DifferenceEquationFoundation} (T : TopologicalTransitivityPackage D) : Prop :=
  T.transitiveCondition

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse