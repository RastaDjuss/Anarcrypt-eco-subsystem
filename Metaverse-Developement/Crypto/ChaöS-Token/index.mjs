import { createUmi } from '@metaplex-foundation/umi-bundle-defaults'
import { keypairIdentity } from '@metaplex-foundation/umi'
import { mplTokenMetadata } from '@metaplex-foundation/mpl-token-metadata'
import { mplCandyMachine } from '@metaplex-foundation/mpl-candy-machine'
import { useWallet } from '@solana/wallet-adapter-react'

// Create Umi Instance

export async function myFunction(
    context: Pick<Context, 'rpc'>, // <-- Inject the interfaces you need.
    publicKey: PublicKey
  ): number {
    const rawAccount = await context.rpc.getAccount(publicKey);
    if (!rawAccount.exists) return 0;
    return u32().deserialize(rawAccount.data)[0];
  }
// Import your private key file and parse it.
const wallet = './mntnqQE128qAR223pfnCggQk1Ms2oEbJyr6BsSU4gKF.json'
const secretKey = JSON.parse(fs.readFileSync(wallet, 'utf-8'))

// Create a keypair from your private key
const keypair = umi.eddsa.createKeypairFromSecretKey(new Uint8Array(secretKey))

// Register it to the Umi client.
umi.use(keypairIdentity(keypair))