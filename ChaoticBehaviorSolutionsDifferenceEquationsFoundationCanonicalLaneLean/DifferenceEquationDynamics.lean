import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure DifferenceEquationDynamicsPackage where
  stateSpace : Type u
  timeDomain : Type v
  evolutionMap : timeDomain → stateSpace → stateSpace
  initialCondition : stateSpace
  solutionSmooth : Prop
  iterationDefined : Prop

structure DifferenceEquationDynamicsEvidence (D : DifferenceEquationDynamicsPackage) where
  initialConditionClosed : D.initialCondition = D.evolutionMap 0 D.initialCondition
  iterationDefinedClosed : D.iterationDefined
  solutionSmoothClosed : D.solutionSmooth

def DifferenceEquationDynamicsClosed (D : DifferenceEquationDynamicsPackage) : Prop :=
  D.initialCondition = D.evolutionMap 0 D.initialCondition ∧
  D.iterationDefined ∧ D.solutionSmooth

theorem difference_equation_dynamics_closed_from_evidence
    (D : DifferenceEquationDynamicsPackage) (E : DifferenceEquationDynamicsEvidence D) :
    DifferenceEquationDynamicsClosed D := by
  exact And.intro E.initialConditionClosed (And.intro E.iterationDefinedClosed E.solutionSmoothClosed)

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse
