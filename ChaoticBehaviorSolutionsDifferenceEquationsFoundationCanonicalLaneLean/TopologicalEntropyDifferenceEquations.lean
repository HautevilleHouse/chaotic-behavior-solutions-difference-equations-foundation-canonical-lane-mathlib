import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure TopologicalEntropyPackage where
  entropyValue : ℝ
  positiveEntropy : Prop
  sensitivityToInitialConditions : Prop
  denseOrbits : Prop
  positiveEntropyTerm : positiveEntropy
  sensitivityToInitialConditionsTerm : sensitivityToInitialConditions
  denseOrbitsTerm : denseOrbits

def TopologicalEntropyClosed (E : TopologicalEntropyPackage) : Prop :=
  E.positiveEntropy ∧ E.sensitivityToInitialConditions ∧ E.denseOrbits

theorem topological_entropy_closed (E : TopologicalEntropyPackage) :
    TopologicalEntropyClosed E := by
  exact And.intro E.positiveEntropyTerm
    (And.intro E.sensitivityToInitialConditionsTerm E.denseOrbitsTerm)

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse