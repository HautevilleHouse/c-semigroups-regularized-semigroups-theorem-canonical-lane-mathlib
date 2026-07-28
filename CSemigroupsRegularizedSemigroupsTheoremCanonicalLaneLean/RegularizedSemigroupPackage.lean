import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.C0SemigroupPackage

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure RegularizedSemigroupPackage (C0 : C0SemigroupPackage) where
  regularization : Type u
  regularizedSemigroup : ℝ → regularization → regularization
  convolutionFormula : Prop
  generatorExtension : Prop
  approximationProperty : Prop

def RegularizedSemigroupClosed {C0 : C0SemigroupPackage} (R : RegularizedSemigroupPackage C0) : Prop :=
  R.convolutionFormula ∧ R.generatorExtension ∧ R.approximationProperty

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse