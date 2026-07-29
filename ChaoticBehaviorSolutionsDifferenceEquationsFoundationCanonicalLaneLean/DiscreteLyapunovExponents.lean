import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure DiscreteLyapunovExponent where
  growthRate : ℕ → ℝ
  basepoint : ℝ
  exponentialSeparation : Prop
  exponentialSeparationTerm : exponentialSeparation

def DiscreteLyapunovExponentClosed (L : DiscreteLyapunovExponent) : Prop :=
  L.exponentialSeparation

theorem discrete_lyapunov_exponent_closed (L : DiscreteLyapunovExponent) :
    DiscreteLyapunovExponentClosed L := by
  exact L.exponentialSeparationTerm

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse