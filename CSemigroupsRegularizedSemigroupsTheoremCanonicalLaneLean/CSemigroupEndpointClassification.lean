import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.CSemigroupRegularizationPackage

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure CSemigroupEndpointClassificationPackage {A : AdmissibleClass}
  (P : CSemigroupRegularizationPackage A) where
  endpointReached : Prop
  remainderResolved : Prop
  endpointEvidence : endpointReached
  remainderEvidence : remainderResolved

def CSemigroupEndpointClosed {A : AdmissibleClass} {P : CSemigroupRegularizationPackage A}
  (E : CSemigroupEndpointClassificationPackage P) : Prop :=
  E.endpointReached ∧ E.remainderResolved

theorem csemigroup_endpoint_closed_from_evidence {A : AdmissibleClass} {P : CSemigroupRegularizationPackage A}
  (E : CSemigroupEndpointClassificationPackage P) : CSemigroupEndpointClosed E := by
  exact And.intro E.endpointEvidence E.remainderEvidence

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse