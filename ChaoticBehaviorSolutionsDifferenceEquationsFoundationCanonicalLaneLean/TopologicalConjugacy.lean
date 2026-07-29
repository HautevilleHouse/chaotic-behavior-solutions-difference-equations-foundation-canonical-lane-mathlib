import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure TopologicalConjugacyPackage where
  sourceMap : Type u → Type u
  targetMap : Type v → Type v
  homeomorphism : Type u → Type v
  conjugacyEquation : Prop
  orbitStructurePreserved : Prop

structure TopologicalConjugacyEvidence (T : TopologicalConjugacyPackage) where
  conjugacyEquationClosed : T.conjugacyEquation
  orbitStructurePreservedClosed : T.orbitStructurePreserved

def TopologicalConjugacyClosed (T : TopologicalConjugacyPackage) : Prop :=
  T.conjugacyEquation ∧ T.orbitStructurePreserved

theorem topological_conjugacy_closed_from_evidence
    (T : TopologicalConjugacyPackage) (E : TopologicalConjugacyEvidence T) :
    TopologicalConjugacyClosed T := by
  exact And.intro E.conjugacyEquationClosed E.orbitStructurePreservedClosed

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse
