import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

structure MoralTheoryPackage where
  theory : Type u
  normativeCore : Prop
  actionGuidingPrinciple : Prop
  consistencyCondition : Prop
  universalityCheck : Prop

structure MoralTheoryEvidence (M : MoralTheoryPackage) where
  normativeCoreClosed : M.normativeCore
  actionGuidingPrincipleClosed : M.actionGuidingPrinciple
  consistencyConditionClosed : M.consistencyCondition
  universalityCheckClosed : M.universalityCheck

def MoralTheoryClosed (M : MoralTheoryPackage) : Prop :=
  M.normativeCore ∧ M.actionGuidingPrinciple ∧ M.consistencyCondition ∧ M.universalityCheck

theorem moral_theory_closed_from_evidence (M : MoralTheoryPackage) (E : MoralTheoryEvidence M) : MoralTheoryClosed M := by
  exact And.intro E.normativeCoreClosed (And.intro E.actionGuidingPrincipleClosed (And.intro E.consistencyConditionClosed E.universalityCheckClosed))

end HautevilleHouse
end EthicsNormativeEthicsCanonicalLaneLean