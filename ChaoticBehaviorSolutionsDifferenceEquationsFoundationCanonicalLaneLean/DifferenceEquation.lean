import ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean.LyapunovExponents

/-!
# Difference Equation Package
-/

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean

structure DifferenceEquationPackage {G : RiemannianCurvaturePackage}
    (L : LyapunovExponentsPackage G) where
  stateSpace : Type u
  transitionFunction : stateSpace → stateSpace
  fixedPoint : stateSpace
  stabilityCondition : Prop
  bifurcationParameter : Type v
  periodDoublingRoute : Prop
  symbolicDynamics : Prop
  topologicalEntropy : Prop
  horseshoeMap : Prop
  strangeAttractor : Prop

structure DifferenceEquationEvidence {G : RiemannianCurvaturePackage}
    {L : LyapunovExponentsPackage G} (D : DifferenceEquationPackage L) where
  fixedPointClosed : D.fixedPoint = D.fixedPoint  -- True
  stabilityConditionClosed : D.stabilityCondition
  periodDoublingRouteClosed : D.periodDoublingRoute
  symbolicDynamicsClosed : D.symbolicDynamics
  topologicalEntropyClosed : D.topologicalEntropy
  horseshoeMapClosed : D.horseshoeMap
  strangeAttractorClosed : D.strangeAttractor

def DifferenceEquationClosed {G : RiemannianCurvaturePackage}
    {L : LyapunovExponentsPackage G} (D : DifferenceEquationPackage L) : Prop :=
  D.stabilityCondition ∧ D.periodDoublingRoute ∧ D.symbolicDynamics ∧
  D.topologicalEntropy ∧ D.horseshoeMap ∧ D.strangeAttractor

theorem difference_equation_closed_from_evidence
    {G : RiemannianCurvaturePackage} {L : LyapunovExponentsPackage G}
    (D : DifferenceEquationPackage L) (E : DifferenceEquationEvidence D) :
    DifferenceEquationClosed D := by
  exact And.intro E.stabilityConditionClosed
    (And.intro E.periodDoublingRouteClosed
      (And.intro E.symbolicDynamicsClosed
        (And.intro E.topologicalEntropyClosed
          (And.intro E.horseshoeMapClosed E.strangeAttractorClosed))))

end ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean
end HautevilleHouse