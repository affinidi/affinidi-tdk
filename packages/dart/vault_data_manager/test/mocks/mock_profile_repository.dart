import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';

class MockDidSigner extends Mock implements DidSigner {
  DidDocument get didDocument =>
      super.noSuchMethod(Invocation.getter(#didDocument)) as DidDocument;
}
