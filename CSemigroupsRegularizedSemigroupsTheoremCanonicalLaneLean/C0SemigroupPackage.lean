import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure C0SemigroupPackage where
  space : Type u
  norm : space → ℝ
  semigroup : ℝ → space → space
  strongContinuity : Prop
  semigroupProperty : Prop
  growthBound : Prop

def C0SemigroupClosed (P : C0SemigroupPackage) : Prop :=
  P.strongContinuity ∧ P.semigroupProperty ∧ P.growthBound

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse