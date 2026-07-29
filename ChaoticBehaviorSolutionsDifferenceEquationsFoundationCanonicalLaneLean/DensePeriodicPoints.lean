import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsFoundation.DifferenceEquationFoundations

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure DensePeriodicPointsPackage (D : DifferenceEquationFoundation) where
  periodicPoints : Set D.stateSpace
  denseCondition : ∀ (U : Set D.stateSpace), U ∈ openSets → U ∩ periodicPoints ≠ ∅
  openSets : Set (Set D.stateSpace)
  densePeriodicEvidence : denseCondition

def densePeriodicPointsClosed {D : DifferenceEquationFoundation} (P : DensePeriodicPointsPackage D) : Prop :=
  P.denseCondition

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse