# SignPresentationLdpInputDto

DTO contains params to sign presentation

## Properties

| Name                     | Type                   | Description                                      | Notes      |
| ------------------------ | ---------------------- | ------------------------------------------------ | ---------- |
| **unsignedPresentation** | **Object**             | Unsigned presentation in Dm1 format              |            |
| **domain**               | **List&lt;String&gt;** | Domain(s) for which the presentation is intended | [optional] |
| **challenge**            | **String**             | Challenge string                                 | [optional] |
