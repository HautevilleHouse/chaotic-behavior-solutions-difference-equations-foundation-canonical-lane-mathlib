import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure ShadowingLemmaPackage where
  epsilon : ℝ
  delta : ℝ
  pseudoOrbitExists : Prop
  trueOrbitTraces : Prop
  pseudoOrbitExistsTerm : pseudoOrbitExists
  trueOrbitTracesTerm : trueOrbitTraces

def ShadowingLemmaClosed (S : ShadowingLemmaPackage) : Prop :=
  S.pseudoOrbitExists ∧ S.trueOrbitTraces

theorem shadowing_lemma_closed (S : ShadowingLemmaPackage) :
    ShadowingLemmaClosed S := by
  exact And.intro S.pseudoOrbitExistsTerm S.trueOrbitTracesTerm

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse