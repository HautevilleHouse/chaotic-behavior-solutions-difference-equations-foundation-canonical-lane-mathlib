import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure DifferenceEquationFoundation where
  timeDomain : Type u
  stateSpace : Type v
  mapFamily : (timeDomain → (stateSpace → stateSpace))
  initialCondition : stateSpace
  solution : timeDomain → stateSpace
  solutionSatisfiesEquation : ∀ t : timeDomain, solution (t+1) = mapFamily t (solution t)

def DifferenceEquationFoundation.translate (D : DifferenceEquationFoundation) (tShift : D.timeDomain → D.timeDomain) : DifferenceEquationFoundation :=
  { D with
    timeDomain := D.timeDomain
    stateSpace := D.stateSpace
    mapFamily := λ t => D.mapFamily (tShift t)
    initialCondition := D.initialCondition
    solution := λ t => D.solution (tShift t)
    solutionSatisfiesEquation := by
      intro t
      calc
        (λ t' => D.solution (tShift t')) (t+1) = D.solution (tShift (t+1)) := rfl
        _ = D.mapFamily (tShift t) (D.solution (tShift t)) := D.solutionSatisfiesEquation (tShift t)
        _ = (λ t' => D.mapFamily (tShift t')) t (D.solution (tShift t)) := rfl
  }

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse