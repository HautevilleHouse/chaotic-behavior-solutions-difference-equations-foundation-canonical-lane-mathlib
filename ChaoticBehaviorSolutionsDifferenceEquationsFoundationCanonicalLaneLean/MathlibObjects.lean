import ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChaoticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChaoticAdmittedObject where
  space : ChaoticSpace
  differenceEquation : Prop
  boundedSolution : Prop
  chaoticBehavior : Prop
  attractorModel : Type
  attractorTopology : TopologicalSpace attractorModel
  embeddedInAttractor : Prop
  conclusion : embeddedInAttractor

structure ChaoticEndgameState where
  object : ChaoticAdmittedObject

def ChaoticWitnessClosed (O : ChaoticAdmittedObject) : Prop :=
  O.embeddedInAttractor

end ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean
end HautevilleHouse