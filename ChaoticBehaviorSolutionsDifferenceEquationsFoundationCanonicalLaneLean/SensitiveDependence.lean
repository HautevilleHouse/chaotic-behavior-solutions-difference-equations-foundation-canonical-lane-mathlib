import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure SensitiveDependencePackage where
  stateSpace : Type u
  metric : stateSpace → stateSpace → ℝ
  evolutionMap : ℕ → stateSpace → stateSpace
  sensitivityConstant : ℝ
  sensitivityCondition : Prop
  denseOrbit : Prop

structure SensitiveDependenceEvidence (S : SensitiveDependencePackage) where
  sensitivityConditionClosed : S.sensitivityCondition
  denseOrbitClosed : S.denseOrbit

def SensitiveDependenceClosed (S : SensitiveDependencePackage) : Prop :=
  S.sensitivityCondition ∧ S.denseOrbit

theorem sensitive_dependence_closed_from_evidence
    (S : SensitiveDependencePackage) (E : SensitiveDependenceEvidence S) :
    SensitiveDependenceClosed S := by
  exact And.intro E.sensitivityConditionClosed E.denseOrbitClosed

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse
