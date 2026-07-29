import ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean.RiemannianCurvature

/-!
# Lyapunov Exponents Package
-/

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean

structure LyapunovExponentsPackage (G : RiemannianCurvaturePackage) where
  tangentMap : Type u
  lyapunovSpectrum : Type v
  positiveLyapunovExponent : Prop
  exponentialDivergence : Prop
  sensitiveDependence : Prop

structure LyapunovExponentsEvidence {G : RiemannianCurvaturePackage}
    (L : LyapunovExponentsPackage G) where
  positiveLyapunovExponentClosed : L.positiveLyapunovExponent
  exponentialDivergenceClosed : L.exponentialDivergence
  sensitiveDependenceClosed : L.sensitiveDependence

def LyapunovExponentsClosed {G : RiemannianCurvaturePackage}
    (L : LyapunovExponentsPackage G) : Prop :=
  L.positiveLyapunovExponent ∧ L.exponentialDivergence ∧ L.sensitiveDependence

theorem lyapunov_exponents_closed_from_evidence
    {G : RiemannianCurvaturePackage} (L : LyapunovExponentsPackage G)
    (E : LyapunovExponentsEvidence L) : LyapunovExponentsClosed L := by
  exact And.intro E.positiveLyapunovExponentClosed
    (And.intro E.exponentialDivergenceClosed E.sensitiveDependenceClosed)

end ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean
end HautevilleHouse