import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure PeriodicPointsPackage where
  stateSpace : Type u
  evolutionMap : ℕ → stateSpace → stateSpace
  period : ℕ
  periodicPointSet : Set stateSpace
  periodicityCondition : Prop
  densityOfPeriodicPoints : Prop

structure PeriodicPointsEvidence (P : PeriodicPointsPackage) where
  periodicityConditionClosed : P.periodicityCondition
  densityOfPeriodicPointsClosed : P.densityOfPeriodicPoints

def PeriodicPointsClosed (P : PeriodicPointsPackage) : Prop :=
  P.periodicityCondition ∧ P.densityOfPeriodicPoints

theorem periodic_points_closed_from_evidence
    (P : PeriodicPointsPackage) (E : PeriodicPointsEvidence P) :
    PeriodicPointsClosed P := by
  exact And.intro E.periodicityConditionClosed E.densityOfPeriodicPointsClosed

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse
