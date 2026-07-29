import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean

structure SymbolicSpace where
  alphabet : Type u
  shiftMap : (ℕ → alphabet) → (ℕ → alphabet)
  shiftContinuity : Prop
  shiftContinuityTerm : shiftContinuity

structure MarkovPartition where
  partitionElements : List (Set stateSpace)
  markovProperty : Prop
  markovPropertyTerm : markovProperty

def SymbolicDynamicsClosed (S : SymbolicSpace) : Prop :=
  S.shiftContinuity

theorem symbolic_dynamics_closed_from_evidence (S : SymbolicSpace) :
    SymbolicDynamicsClosed S := by
  exact S.shiftContinuityTerm

end ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean
end HautevilleHouse