import ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ChaoticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChaoticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean
end HautevilleHouse