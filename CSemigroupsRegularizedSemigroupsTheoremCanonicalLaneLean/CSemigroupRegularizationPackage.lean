import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.CSemigroupAdmittedObject

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure CSemigroupRegularizationPackage (A : AdmissibleClass) where
  generationSet : Set (A.object.space.carrier)
  generationProperty : A.object.isC
  regularizationMap : A.object.space.carrier → A.object.space.carrier
  regularizationIdempotent : ∀ x, regularizationMap (regularizationMap x) = regularizationMap x
  closureUnderGeneration : Prop
  closureUnderGenerationClosed : closureUnderGeneration

def CSemigroupRegularizationClosed (A : AdmissibleClass) (P : CSemigroupRegularizationPackage A) : Prop :=
  P.closureUnderGeneration

theorem csemigroup_regularization_closed_from_evidence (A : AdmissibleClass) (P : CSemigroupRegularizationPackage A) :
    CSemigroupRegularizationClosed A P := by
  exact P.closureUnderGenerationClosed

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse