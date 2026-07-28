import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.CSemigroupAdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.generatesRegularizedSemigroup

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.generatesRegularizedSemigroup

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
