import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean

structure InvariantMeasure where
  measureSpace : Type u
  measureAction : (stateSpace → ℝ) → ℝ
  invarianceProperty : Prop
  invariancePropertyTerm : invarianceProperty

structure ErgodicMeasure where
  invariantMeasure : InvariantMeasure
  ergodicProperty : Prop
  ergodicPropertyTerm : ergodicProperty

structure MixingProperty where
  strongMixing : Prop
  weakMixing : Prop
  strongMixingTerm : strongMixing
  weakMixingTerm : weakMixing

def InvariantMeasuresClosed (M : InvariantMeasure) : Prop :=
  M.invarianceProperty

theorem invariant_measures_closed_from_evidence (M : InvariantMeasure) :
    InvariantMeasuresClosed M := by
  exact M.invariancePropertyTerm

end ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean
end HautevilleHouse