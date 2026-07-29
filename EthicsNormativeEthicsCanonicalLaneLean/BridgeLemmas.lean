import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AdmissibleEthicalObject.mk agent principle judgment conclusion => judgment

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A.object with
  | AdmissibleEthicalObject.mk _ _ _ h => h

end EthicsNormativeEthicsCanonicalLaneLean
end HautevilleHouse