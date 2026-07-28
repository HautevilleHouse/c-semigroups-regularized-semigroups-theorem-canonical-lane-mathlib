import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.C0SemigroupPackage

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CSemigroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse