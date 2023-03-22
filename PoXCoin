;; SIP-010 fungible token standard
;; https://github.com/stacksgov/sips/blob/main/sips/sip-010/sip-010-fungible-token-standard.md

(define-fungible-token stablecoin)

(define-public (transfer (amount uint) (sender principal) (recipient principal))
  (if (is-eq sender tx-sender)
      (ft-transfer? stablecoin amount sender recipient)
      (err u1)))

(define-public (mint (amount uint) (recipient principal))
  (begin
    (asserts! (is-eq tx-sender (contract-caller)) (err u2))
    (ft-mint? stablecoin amount recipient)))

(define-public (burn (amount uint) (burner principal))
  (begin
    (asserts! (is-eq tx-sender (contract-caller)) (err u3))
    (ft-burn? stablecoin amount burner)))

(define-read-only (get-balance (user principal))
  (ft-get-balance stablecoin user))

(define-read-only (get-total-supply)
  (ft-get-supply stablecoin))

;; SIP-010 metadata
(define-read-only (get-name) (some "My Stablecoin"))
(define-read-only (get-symbol) (some "MSTB"))
(define-read-only (get-decimals) (some u6))
(define-read-only (get-supply-contract) (some (var-get stablecoin-supply-contract)))
