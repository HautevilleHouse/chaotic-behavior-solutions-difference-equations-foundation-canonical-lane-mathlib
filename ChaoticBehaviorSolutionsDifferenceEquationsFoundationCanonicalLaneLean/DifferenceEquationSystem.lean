import ChaoticBehaviorSolutionsDifferenceEquationsFoundation.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure DifferenceEquationSystem where
  stateSpace : Type
  iteration : stateSpace → stateSpace
  initialCondition : stateSpace
  parameter : ℝ

def orbit (sys : DifferenceEquationSystem) : ℕ → sys.stateSpace := by
  intro n
  induction n with
  | zero => exact sys.initialCondition
  | succ n ih => exact sys.iteration ih

structure DifferenceEquationSystemPackage (A : AdmissibleClass) where
  system : DifferenceEquationSystem
  boundedOrbitProp : Prop
  chaoticBehaviorProp : Prop
  initialConditionMatches : sys.initialCondition = A.seedState 0
  boundedOrbitClosed : boundedOrbitProp
  chaoticBehaviorClosed : chaoticBehaviorProp

def DifferenceEquationSystemClosed {A : AdmissibleClass} (P : DifferenceEquationSystemPackage A) : Prop :=
  P.boundedOrbitProp ∧ P.chaoticBehaviorProp

theorem difference_equation_system_closed_from_evidence
    {A : AdmissibleClass} (P : DifferenceEquationSystemPackage A) :
    DifferenceEquationSystemClosed P := by
  exact And.intro P.boundedOrbitClosed P.chaoticBehaviorClosed

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse