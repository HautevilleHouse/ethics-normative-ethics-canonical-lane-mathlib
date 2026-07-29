import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

def ConstrainedEthicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ethics_endgame (A : AdmissibleClass) : ConstrainedEthicsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EthicsNormativeEthicsCanonicalLaneLean
end HautevilleHouse