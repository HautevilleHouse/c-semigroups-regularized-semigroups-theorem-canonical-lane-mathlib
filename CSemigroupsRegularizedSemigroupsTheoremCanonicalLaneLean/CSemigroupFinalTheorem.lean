import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.CSemigroupBridge
import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.CSemigroupGate

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

def ConstrainedRegularizedSemigroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_regularized_semigroup_endgame (A : AdmissibleClass) :
    ConstrainedRegularizedSemigroupClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
