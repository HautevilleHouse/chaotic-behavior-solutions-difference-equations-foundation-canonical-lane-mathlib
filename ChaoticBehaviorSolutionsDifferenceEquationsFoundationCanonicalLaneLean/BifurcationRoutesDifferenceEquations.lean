import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure BifurcationRoutePackage where
  parameterSpace : ℝ
  periodDoublingRoute : Prop
  quasiperiodicRoute : Prop
  intermittencyRoute : Prop
  periodDoublingRouteTerm : periodDoublingRoute
  quasiperiodicRouteTerm : quasiperiodicRoute
  intermittencyRouteTerm : intermittencyRoute

def BifurcationRouteClosed (B : BifurcationRoutePackage) : Prop :=
  B.periodDoublingRoute ∧ B.quasiperiodicRoute ∧ B.intermittencyRoute

theorem bifurcation_route_closed (B : BifurcationRoutePackage) :
    BifurcationRouteClosed B := by
  exact And.intro B.periodDoublingRouteTerm
    (And.intro B.quasiperiodicRouteTerm B.intermittencyRouteTerm)

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse