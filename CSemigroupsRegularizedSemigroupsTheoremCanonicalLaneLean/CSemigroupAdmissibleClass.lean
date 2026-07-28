import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure CSemigroupObject where
  space : Type
  norm : space → ℝ
  generator : space → space
  denseDomain : Prop
  resolventExists : Prop
  generatesRegularizedSemigroup : Prop

structure AdmissibleClass where
  object : CSemigroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.generatesRegularizedSemigroup ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
