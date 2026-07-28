import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.SemigroupDefinitions

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure Generator {X : BanachSpace} (S : C0Semigroup X) where
  domain : Set X.carrier
  action : X.carrier → X.carrier
  generatorProperty : ∀ x ∈ domain, action x = deriv (λ t : ℝ => S.family t x) 0
  resolventExists : ∀ λ > 0, ContinuousLinearMap (X.carrier) (X.carrier)

structure GeneratorEvidence {X : BanachSpace} {S : C0Semigroup X} (G : Generator S) where
  generatorPropertyClosed : G.generatorProperty
  resolventExistsClosed : G.resolventExists

def GeneratorClosed {X : BanachSpace} {S : C0Semigroup X} (G : Generator S) : Prop :=
  G.generatorProperty ∧ G.resolventExists

theorem generator_closed_from_evidence {X : BanachSpace} {S : C0Semigroup X} (G : Generator S) (E : GeneratorEvidence G) : GeneratorClosed G := by
  exact And.intro E.generatorPropertyClosed E.resolventExistsClosed

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse