import ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChaoticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean
end HautevilleHouse