import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

structure MoralAgent where
  carrier : Type
  rationality : Prop
  autonomy : Prop

structure MoralPrinciple where
  statement : Prop
  justification : Prop

def normativeJudgment (agent : MoralAgent) (principle : MoralPrinciple) : Prop :=
  agent.rationality ∧ agent.autonomy ∧ principle.justification

structure AdmissibleEthicalObject where
  agent : MoralAgent
  principle : MoralPrinciple
  judgment : normativeJudgment agent principle
  conclusion : judgment

end EthicsNormativeEthicsCanonicalLaneLean
end HautevilleHouse