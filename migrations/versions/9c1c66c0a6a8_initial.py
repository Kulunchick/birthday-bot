"""initial

Revision ID: 9c1c66c0a6a8
Revises:
Create Date: 2023-07-22 14:33:03.180769

"""
from alembic import op
import sqlalchemy as sa

# revision identifiers, used by Alembic.
revision = '9c1c66c0a6a8'
down_revision = None
branch_labels = None
depends_on = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('congratulations',
                    sa.Column('photo_file_id', sa.String(), nullable=False),
                    sa.Column('message', sa.String(), nullable=False),
                    sa.Column('created_at', sa.DateTime(), nullable=False),
                    sa.Column('updated_at', sa.DateTime(), nullable=False),
                    sa.Column('id', sa.Integer(), autoincrement=True, nullable=False),
                    sa.PrimaryKeyConstraint('id', name=op.f('pk_congratulations'))
                    )
    op.create_table('groups',
                    sa.Column('chat_id', sa.BigInteger(), nullable=False),
                    sa.Column('title', sa.String(), nullable=False),
                    sa.Column('language', sa.Enum('EN', 'UA', name='language'), nullable=False),
                    sa.Column('collect', sa.Boolean(), nullable=False),
                    sa.Column('created_at', sa.DateTime(), nullable=False),
                    sa.Column('updated_at', sa.DateTime(), nullable=False),
                    sa.Column('id', sa.Integer(), autoincrement=True, nullable=False),
                    sa.PrimaryKeyConstraint('id', name=op.f('pk_groups'))
                    )
    op.create_index(op.f('ix_groups_chat_id'), 'groups', ['chat_id'], unique=True)
    op.create_table('users',
                    sa.Column('user_id', sa.BigInteger(), nullable=False),
                    sa.Column('fullname', sa.String(), nullable=False),
                    sa.Column('gender', sa.Enum('MALE', 'FEMALE', name='gender'), nullable=False),
                    sa.Column('language', sa.Enum('EN', 'UA', name='language'), nullable=False),
                    sa.Column('timezone', sa.String(), nullable=False),
                    sa.Column('birthday', sa.Date(), nullable=False),
                    sa.Column('created_at', sa.DateTime(), nullable=False),
                    sa.Column('updated_at', sa.DateTime(), nullable=False),
                    sa.Column('id', sa.Integer(), autoincrement=True, nullable=False),
                    sa.PrimaryKeyConstraint('id', name=op.f('pk_users'))
                    )
    op.create_index(op.f('ix_users_user_id'), 'users', ['user_id'], unique=True)
    op.create_table('usergrouplink',
                    sa.Column('user_id', sa.Integer(), nullable=False),
                    sa.Column('group_id', sa.Integer(), nullable=False),
                    sa.Column('id', sa.Integer(), autoincrement=True, nullable=False),
                    sa.ForeignKeyConstraint(['group_id'], ['groups.id'], name=op.f('fk_usergrouplink_group_id_groups')),
                    sa.ForeignKeyConstraint(['user_id'], ['users.id'], name=op.f('fk_usergrouplink_user_id_users')),
                    sa.PrimaryKeyConstraint('user_id', 'group_id', 'id', name=op.f('pk_usergrouplink'))
                    )
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('usergrouplink')
    op.drop_index(op.f('ix_users_user_id'), table_name='users')
    op.drop_table('users')
    op.drop_index(op.f('ix_groups_chat_id'), table_name='groups')
    op.drop_table('groups')
    op.drop_table('congratulations')
    # ### end Alembic commands ###
