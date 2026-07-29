import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsFoundation.DifferenceEquationFoundations

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure LyapunovExponentPackage (D : DifferenceEquationFoundation) where
  derivativeAtPoint : D.stateSpace → (D.stateSpace → D.stateSpace)
  lyapunovExponent : ℝ
  exponentCharacterizesSensitivity : Prop
  derivativeComputed : ∀ x : D.stateSpace, Derivative (D.mapFamily 0) x = derivativeAtPoint x
  exponentDefined : lyapunovExponent = limsup (λ n : ℕ => (1/n) * log (norm (productDerivative n)))

def lyapunovExponentClosed {D : DifferenceEquationFoundation} (L : LyapunovExponentPackage D) : Prop :=
  L.exponentCharacterizesSensitivity

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse