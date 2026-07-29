import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundation

structure LiouvilleMeasurePackage where
  stateSpace : Type u
  evolutionMap : ℕ → stateSpace → stateSpace
  invariantMeasure : Measure stateSpace
  measurePreservation : Prop
  ergodicity : Prop

structure LiouvilleMeasureEvidence (L : LiouvilleMeasurePackage) where
  measurePreservationClosed : L.measurePreservation
  ergodicityClosed : L.ergodicity

def LiouvilleMeasureClosed (L : LiouvilleMeasurePackage) : Prop :=
  L.measurePreservation ∧ L.ergodicity

theorem liouville_measure_closed_from_evidence
    (L : LiouvilleMeasurePackage) (E : LiouvilleMeasureEvidence L) :
    LiouvilleMeasureClosed L := by
  exact And.intro E.measurePreservationClosed E.ergodicityClosed

end ChaoticBehaviorSolutionsDifferenceEquationsFoundation
end HautevilleHouse
