import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

-- Consequentialist framework: evaluate actions by outcomes

structure Outcome where
  utility : ℚ
  affectedAgents : List MoralAgent

structure Action where
  description : Prop
  consequences : List Outcome

def totalUtility (os : List Outcome) : ℚ :=
  os.foldl (λ acc o => acc + o.utility) 0

structure ConsequentialistPackage where
  alternativeActions : List Action
  bestAction : Action
  bestActionMaximizesUtility : ∀ a ∈ alternativeActions, 
    totalUtility bestAction.consequences ≥ totalUtility a.consequences

def ConsequentialistClosed (C : ConsequentialistPackage) : Prop :=
  C.bestActionMaximizesUtility

theorem consequentialist_closed_from_evidence (C : ConsequentialistPackage) : ConsequentialistClosed C :=
  C.bestActionMaximizesUtility

end EthicsNormativeEthicsCanonicalLaneLean
end HautevilleHouse