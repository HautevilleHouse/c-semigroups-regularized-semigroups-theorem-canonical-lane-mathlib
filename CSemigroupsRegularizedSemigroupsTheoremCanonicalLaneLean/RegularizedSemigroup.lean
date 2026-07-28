import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.SemigroupDefinitions

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure RegularizedSemigroup {X : BanachSpace} (A : C0Semigroup X) where
  regulator : X.carrier → X.carrier
  regularizedFamily : ℝ → (X.carrier → X.carrier)
  regularizationProperty : ∀ t ≥ 0, regularizedFamily t = A.family t ∘ regulator
  injectivityProp : ∀ x y, regulator x = regulator y → x = y
  rangeDenseProp : Dense (Set.range regulator)

structure RegularizedSemigroupEvidence {X : BanachSpace} {A : C0Semigroup X} (R : RegularizedSemigroup A) where
  regularizationPropertyClosed : R.regularizationProperty
  injectivityPropClosed : R.injectivityProp
  rangeDensePropClosed : R.rangeDenseProp

def RegularizedSemigroupClosed {X : BanachSpace} {A : C0Semigroup X} (R : RegularizedSemigroup A) : Prop :=
  R.regularizationProperty ∧ R.injectivityProp ∧ R.rangeDenseProp

theorem regularized_semigroup_closed_from_evidence {X : BanachSpace} {A : C0Semigroup X} (R : RegularizedSemigroup A) (E : RegularizedSemigroupEvidence R) : RegularizedSemigroupClosed R := by
  exact And.intro E.regularizationPropertyClosed (And.intro E.injectivityPropClosed E.rangeDensePropClosed)

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse